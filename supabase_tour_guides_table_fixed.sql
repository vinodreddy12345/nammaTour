-- Create the tour_guides table in Supabase
CREATE TABLE tour_guides (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name TEXT NOT NULL,
  photo_url TEXT,
  gender TEXT,
  experience TEXT,
  languages TEXT,
  specialties TEXT,
  description TEXT,
  contact TEXT,
  price TEXT,
  rating NUMERIC DEFAULT 4.5,
  reviews INTEGER DEFAULT 0,
  verified BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Add a basic security policy for demo purposes
ALTER TABLE tour_guides ENABLE ROW LEVEL SECURITY;

-- Allow anyone to read data
CREATE POLICY "Allow public read access" 
ON tour_guides 
FOR SELECT 
TO PUBLIC
USING (true);

-- Allow anyone to insert data (for demo purposes)
CREATE POLICY "Allow public insert access" 
ON tour_guides 
FOR INSERT 
TO PUBLIC
WITH CHECK (true);
